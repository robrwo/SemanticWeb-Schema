use utf8;

package SemanticWeb::Schema::tocContinuation;

# ABSTRACT: A [[HyperTocEntry]] can have a [[tocContinuation]] indicated

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'tocContinuation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A L<SemanticWeb::Schema::HyperTocEntry> can have a [[tocContinuation]] indicated, which is another L<SemanticWeb::Schema::HyperTocEntry> that would be the default next item to play or render.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
