use utf8;

package SemanticWeb::Schema::tocEntry;

# ABSTRACT: Indicates a [[HyperTocEntry]] in a [[HyperToc]].

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'tocEntry';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates a L<SemanticWeb::Schema::HyperTocEntry> in a L<SemanticWeb::Schema::HyperToc>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
