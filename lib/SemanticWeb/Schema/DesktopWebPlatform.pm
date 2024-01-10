use utf8;

package SemanticWeb::Schema::DesktopWebPlatform;

# ABSTRACT: Represents the broad notion of 'desktop' browsers as a Web Platform.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'DesktopWebPlatform';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Represents the broad notion of 'desktop' browsers as a Web Platform.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
