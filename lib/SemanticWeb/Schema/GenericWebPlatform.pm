use utf8;

package SemanticWeb::Schema::GenericWebPlatform;

# ABSTRACT: Represents the generic notion of the Web Platform

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'GenericWebPlatform';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Represents the generic notion of the Web Platform. More specific codes include L<SemanticWeb::Schema::MobileWebPlatform> and L<SemanticWeb::Schema::DesktopWebPlatform>, as an incomplete list. 



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
