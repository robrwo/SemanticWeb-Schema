use utf8;

package SemanticWeb::Schema::LibrarySystem;

# ABSTRACT: A [[LibrarySystem]] is a collaborative system amongst several libraries.

use Moo;

extends qw/ SemanticWeb::Schema::Organization /;


use MooX::JSON_LD 'LibrarySystem';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.1';

=encoding utf8

=head1 DESCRIPTION

A L<SemanticWeb::Schema::LibrarySystem> is a collaborative system amongst several libraries.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;
