use utf8;

package SemanticWeb::Schema::HowToStep;

# ABSTRACT: A step in the instructions for how to achieve a result

use Moo;

extends qw/ SemanticWeb::Schema::ListItem SemanticWeb::Schema::CreativeWork SemanticWeb::Schema::ItemList /;


use MooX::JSON_LD 'HowToStep';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.5';

=encoding utf8

=head1 DESCRIPTION

A step in the instructions for how to achieve a result. It is an ordered
list with HowToDirection and/or HowToTip items.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::ItemList>

=cut

1;
