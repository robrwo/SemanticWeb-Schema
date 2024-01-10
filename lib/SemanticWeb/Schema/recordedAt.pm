use utf8;

package SemanticWeb::Schema::recordedAt;

# ABSTRACT: The Event where the CreativeWork was recorded

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'recordedAt';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The Event where the CreativeWork was recorded. The CreativeWork may capture
all or part of the event.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
