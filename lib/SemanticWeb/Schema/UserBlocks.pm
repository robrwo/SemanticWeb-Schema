use utf8;

package SemanticWeb::Schema::UserBlocks;

# ABSTRACT: UserInteraction and its subtypes is an old way of talking about users interacting with pages

use Moo;

extends qw/ SemanticWeb::Schema::UserInteraction /;


use MooX::JSON_LD 'UserBlocks';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.0';

=encoding utf8

=head1 DESCRIPTION

UserInteraction and its subtypes is an old way of talking about users interacting with pages. It is generally better to use L<SemanticWeb::Schema::Action>-based vocabulary, alongside types such as L<SemanticWeb::Schema::Comment>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::UserInteraction>

=cut

1;
