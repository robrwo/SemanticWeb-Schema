use utf8;

package SemanticWeb::Schema::Nonprofit501c12;

# ABSTRACT: Nonprofit501c12: Non-profit type referring to Benevolent Life Insurance Associations

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Nonprofit501c12';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Nonprofit501c12: Non-profit type referring to Benevolent Life Insurance
Associations, Mutual Ditch or Irrigation Companies, Mutual or Cooperative
Telephone Companies.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
