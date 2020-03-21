use utf8;

package SemanticWeb::Schema::Duration;

# ABSTRACT: Quantity: Duration (use ISO 8601 duration format ).

use Moo;

extends qw/ SemanticWeb::Schema::Quantity /;


use MooX::JSON_LD 'Duration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>Quantity: Duration (use <a
href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601 duration
format</a>).<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Quantity>

=cut

1;
