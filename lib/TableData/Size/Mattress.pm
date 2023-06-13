package TableData::Size::Mattress;

use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

use Role::Tiny::With;
with 'TableDataRole::Source::CSVInDATA';
with 'TableDataRole::Spec::TableDef';

sub get_table_def {
    return +{
        fields => {
            name    => {pos=>0, schema=>'str*'},
            summary => {pos=>1, schema=>'str*'},
            width   => {pos=>2, summary=>'Width, in cm', schema=>'posfloat*'},
            length  => {pos=>3, summary=>'Length, in cm', schema=>'posfloat*'},
        },
        pk => 'name',
    };
}

# STATS

1;
# ABSTRACT: Mattress sizes

=head1 DESCRIPTION

Keywords: bed sizes

=head1 SEE ALSO

L<https://en.wikipedia.org/wiki/Bed_size>

=cut

__DATA__
name,summary,width,length
single_id,Single bed (Indonesia),90,200
double_id,Double/twin bed (Indonesia),120,200
twin_id,Double/twin bed (Indonesia),120,200
queen_id,Queen-size bed (Indonesia),160,200
king_id,King-size bed (Indonesia),180,200
superking_id,Super king-size bed (Indonesia),200,200
single_my,Single bed (Malaysia & Singapore),91,191
supersingle_my,Double/twin bed (Malaysia & Singapore),107,191
queen_my,Queen-size bed (Malaysia & Singapore),152,191
king_my,King-size bed (Malaysia & Singapore),183,191
