use utf8;

package SemanticWeb::Schema::targetPlatform;

# ABSTRACT: Type of app development: phone

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'targetPlatform';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Type of app development: phone, Metro style, desktop, XBox, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
