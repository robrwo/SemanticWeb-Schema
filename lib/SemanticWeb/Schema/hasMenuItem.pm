use utf8;

package SemanticWeb::Schema::hasMenuItem;

# ABSTRACT: A food or drink item contained in a menu or menu section.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'hasMenuItem';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A food or drink item contained in a menu or menu section.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
