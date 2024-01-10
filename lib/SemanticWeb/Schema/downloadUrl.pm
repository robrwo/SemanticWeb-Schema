use utf8;

package SemanticWeb::Schema::downloadUrl;

# ABSTRACT: If the file can be downloaded

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'downloadUrl';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

If the file can be downloaded, URL to download the binary.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
