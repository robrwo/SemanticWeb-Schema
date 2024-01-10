use utf8;

package SemanticWeb::Schema::contentReferenceTime;

# ABSTRACT: The specific time described by a creative work

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'contentReferenceTime';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The specific time described by a creative work, for works (e.g. articles,
video objects etc.) that emphasise a particular moment within an Event.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
