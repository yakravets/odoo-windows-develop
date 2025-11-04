FROM odoo:19

USER root
RUN pip install debugpy --no-cache-dir --break-system-packages
USER odoo