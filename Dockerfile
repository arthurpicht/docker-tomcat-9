FROM arthurpicht/jdk-12:0.1

ENV DOCKER_NAME="tomcat-9"
ENV TIME_ZONE="Europe/Berlin"

ENV CATALINA_HOME /man/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

# TEMP: cache file locally, dev-time only
# COPY tomcat.tar.gz .

RUN set -eux; \
	export TOMCAT_URL="https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz"; \
	export TOMCAT_FILE=tomcat.tar.gz; \
	export TOMCAT_SHA512_URL="https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz.sha512"; \
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
	echo "$TOMCAT_URL" >> /.components; 

EXPOSE 8080
CMD ["catalina.sh", "run"]

