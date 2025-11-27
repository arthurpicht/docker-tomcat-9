FROM arthurpicht/adoptopenjdk-21:latest

ENV DOCKER_NAME="tomcat-9"
ENV TIME_ZONE="Europe/Berlin"

ENV CATALINA_HOME=/man/tomcat
ENV PATH=$CATALINA_HOME/bin:$PATH

RUN set -eux; \
	export TOMCAT_VERSION="v$(curl --silent https://archive.apache.org/dist/tomcat/tomcat-9/ | grep -oE 'v9\.[0-9]+\.[0-9]+' | tr -d 'v' | sort -t. -k1,1n -k2,2n -k3,3n | tail -n 1)"; \
	echo ">>> latest Tomcat version: ${TOMCAT_VERSION}"; \
	export TOMCAT_URL="https://archive.apache.org/dist/tomcat/tomcat-9/${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION#v}.tar.gz"; \
	export TOMCAT_FILE=tomcat.tar.gz; \
	export TOMCAT_SHA512_URL="https://archive.apache.org/dist/tomcat/tomcat-9/${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION#v}.tar.gz.sha512"; \
	export TOMCAT_SHA512_FILE=tomcat.tar.gz.sha512; \
	wget -O "$TOMCAT_FILE" "$TOMCAT_URL"; \
	wget -O "$TOMCAT_SHA512_FILE" "$TOMCAT_SHA512_URL"; \
	HASH=$(cat $TOMCAT_SHA512_FILE | cut -d ' ' -f 1); \
	HASH="$HASH $TOMCAT_FILE"; \
	echo ">>> $HASH"; \
	echo $HASH | sha512sum -c; \
	mkdir -p "$CATALINA_HOME"; \
	tar --extract \
		--file "$TOMCAT_FILE" \
		--directory "$CATALINA_HOME" \
		--strip-components 1 \
		--no-same-owner \
	; \
	rm "$TOMCAT_FILE"; \
	echo "[$(date)]  [$DOCKER_NAME] [$TOMCAT_URL]" >> /.components;

EXPOSE 8080
CMD ["catalina.sh", "run"]

