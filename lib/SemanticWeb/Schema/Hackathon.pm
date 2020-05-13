use utf8;

package SemanticWeb::Schema::Hackathon;

# ABSTRACT: A hackathon event.

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use MooX::JSON_LD 'Hackathon';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v8.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A <a href="https://en.wikipedia.org/wiki/Hackathon">hackathon</a>
event.<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
