use utf8;

package SemanticWeb::Schema::petsAllowed;

# ABSTRACT: Indicates whether pets are allowed to enter the accommodation or lodging business

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'petsAllowed';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates whether pets are allowed to enter the accommodation or lodging
business. More detailed information can be put in a text value.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
