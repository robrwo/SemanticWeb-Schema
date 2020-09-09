use utf8;

package SemanticWeb::Schema::DownloadAction;

# ABSTRACT: The act of downloading an object.

use Moo;

extends qw/ SemanticWeb::Schema::TransferAction /;


use MooX::JSON_LD 'DownloadAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v10.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of downloading an object.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::TransferAction>

=cut

1;
