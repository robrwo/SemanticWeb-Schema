use utf8;

package SemanticWeb::Schema::UsageOrScheduleHealthAspect;

# ABSTRACT: Content about how

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'UsageOrScheduleHealthAspect';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Content about how, when, frequency and dosage of a topic.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
