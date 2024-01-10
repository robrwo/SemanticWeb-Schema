use utf8;

package SemanticWeb::Schema::termCode;

# ABSTRACT: A code that identifies this [[DefinedTerm]] within a [[DefinedTermSet]].

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'termCode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A code that identifies this L<SemanticWeb::Schema::DefinedTerm> within a L<SemanticWeb::Schema::DefinedTermSet>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
