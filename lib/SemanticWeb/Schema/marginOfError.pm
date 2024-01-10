use utf8;

package SemanticWeb::Schema::marginOfError;

# ABSTRACT: A [[marginOfError]] for an [[Observation]].

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'marginOfError';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A [[marginOfError]] for an L<SemanticWeb::Schema::Observation>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
