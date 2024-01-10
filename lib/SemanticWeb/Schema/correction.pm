use utf8;

package SemanticWeb::Schema::correction;

# ABSTRACT: Indicates a correction to a [[CreativeWork]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'correction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates a correction to a L<SemanticWeb::Schema::CreativeWork>, either via a L<SemanticWeb::Schema::CorrectionComment>, textually or in another document.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
