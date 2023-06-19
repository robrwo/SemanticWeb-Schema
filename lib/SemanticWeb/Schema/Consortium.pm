use utf8;

package SemanticWeb::Schema::Consortium;

# ABSTRACT: A Consortium is a membership [[Organization]] whose members are typically Organizations.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Organization /;


use MooX::JSON_LD 'Consortium';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

A Consortium is a membership L<SemanticWeb::Schema::Organization> whose members are typically Organizations.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;
