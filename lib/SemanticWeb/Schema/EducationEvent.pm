use utf8;

package SemanticWeb::Schema::EducationEvent;

# ABSTRACT: Event type: Education event.

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use MooX::JSON_LD 'EducationEvent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.7.0';

=encoding utf8

=head1 DESCRIPTION

Event type: Education event.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
