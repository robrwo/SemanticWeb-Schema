use utf8;

package SemanticWeb::Schema::OTC;

# ABSTRACT: The character of a medical substance

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'OTC';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The character of a medical substance, typically a medicine, of being
available over the counter or not.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
