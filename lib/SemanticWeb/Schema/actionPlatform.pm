use utf8;

package SemanticWeb::Schema::actionPlatform;

# ABSTRACT: The high level platform(s) where the Action can be performed for the given URL

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'actionPlatform';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The high level platform(s) where the Action can be performed for the given
URL. To specify a specific application or operating system instance, use
actionApplication.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
