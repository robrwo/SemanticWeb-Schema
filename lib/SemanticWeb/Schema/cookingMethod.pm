use utf8;

package SemanticWeb::Schema::cookingMethod;

# ABSTRACT: The method of cooking

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'cookingMethod';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The method of cooking, such as Frying, Steaming, ...




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
