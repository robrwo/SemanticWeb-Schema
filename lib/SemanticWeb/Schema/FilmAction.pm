use utf8;

package SemanticWeb::Schema::FilmAction;

# ABSTRACT: The act of capturing sound and moving images on film

use Moo;

extends qw/ SemanticWeb::Schema::CreateAction /;


use MooX::JSON_LD 'FilmAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of capturing sound and moving images on film, video, or digitally.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CreateAction>

=cut

1;
