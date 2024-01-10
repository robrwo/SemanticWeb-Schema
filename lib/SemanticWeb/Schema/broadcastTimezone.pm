use utf8;

package SemanticWeb::Schema::broadcastTimezone;

# ABSTRACT: The timezone in [ISO 8601 format](http://en

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'broadcastTimezone';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The timezone in [ISO 8601 format](http://en.wikipedia.org/wiki/ISO_8601)
for which the service bases its broadcasts.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
