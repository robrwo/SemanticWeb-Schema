use utf8;

package SemanticWeb::Schema::replyToUrl;

# ABSTRACT: The URL at which a reply may be posted to the specified UserComment.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'replyToUrl';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The URL at which a reply may be posted to the specified UserComment.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
