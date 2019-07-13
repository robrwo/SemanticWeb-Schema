use utf8;

package SemanticWeb::Schema::Duration;

# ABSTRACT: Quantity: Duration (use <a href="http://en

use Moo;

extends qw/ SemanticWeb::Schema::Quantity /;


use MooX::JSON_LD 'Duration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.6.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

Quantity: Duration (use <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO
8601 duration format</a>).

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Quantity>

=cut

1;
