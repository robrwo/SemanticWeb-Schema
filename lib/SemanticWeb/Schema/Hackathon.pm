use utf8;

package SemanticWeb::Schema::Hackathon;

# ABSTRACT: A [hackathon](https://en

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use MooX::JSON_LD 'Hackathon';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.2';

=encoding utf8

=head1 DESCRIPTION

A [hackathon](https://en.wikipedia.org/wiki/Hackathon) event.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
