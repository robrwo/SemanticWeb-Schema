use utf8;

package SemanticWeb::Schema::taxID;

# ABSTRACT: The Tax / Fiscal ID of the organization or person

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'taxID';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The Tax / Fiscal ID of the organization or person, e.g. the TIN in the US
or the CIF/NIF in Spain.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
