use utf8;

package SemanticWeb::Schema::postalCodePrefix;

# ABSTRACT: A defined range of postal codes indicated by a common textual prefix

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'postalCodePrefix';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A defined range of postal codes indicated by a common textual prefix. Used
for non-numeric systems such as UK.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
