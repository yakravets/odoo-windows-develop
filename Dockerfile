FROM odoo:18

USER root
RUN pip install debugpy --no-cache-dir --break-system-packages
USER odoo