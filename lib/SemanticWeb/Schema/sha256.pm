use utf8;

package SemanticWeb::Schema::sha256;

# ABSTRACT: The [SHA-2](https://en

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'sha256';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The [SHA-2](https://en.wikipedia.org/wiki/SHA-2) SHA256 hash of the content
of the item. For example, a zero-length input has value
'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
