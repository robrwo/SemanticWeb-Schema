use utf8;

package SemanticWeb::Schema::GeneralContractor;

# ABSTRACT: A general contractor.

use Moo;

extends qw/ SemanticWeb::Schema::HomeAndConstructionBusiness /;


use MooX::JSON_LD 'GeneralContractor';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.1';

=encoding utf8

=head1 DESCRIPTION

A general contractor.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::HomeAndConstructionBusiness>

=cut

1;
