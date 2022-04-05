"""Initial Migration

Revision ID: 32f5d5fd4be4
Revises: 
Create Date: 2021-06-24 12:12:39.261840

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '32f5d5fd4be4'
down_revision = None
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('notes', sa.Column('category', sa.String(length=255), nullable=False))
    op.create_index(op.f('ix_notes_category'), 'notes', ['category'], unique=False)
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_index(op.f('ix_notes_category'), table_name='notes')
    op.drop_column('notes', 'category')
    # ### end Alembic commands ###
