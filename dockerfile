#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
FROM darkow/trino:latest

ENV JAVA_HOME /usr/lib/jvm/zulu11

ARG TRINO_VERSION
COPY trino-jdbc-${TRINO_VERSION}.jar /usr/bin/trino
COPY --chown=trino:trino trino-server-${TRINO_VERSION} /usr/lib/trino
COPY --chown=trino:trino default/etc /etc/trino
COPY --chown=trino:trino bin /opt/trino

RUN chmod +x /opt/trino/run-trino

EXPOSE 8080
USER trino:trino
ENV LANG en_US.UTF-8
CMD ["/opt/trino/run-trino"]
