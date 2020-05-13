use utf8;

package SemanticWeb::Schema::DanceGroup;

# ABSTRACT: A dance group—for example

use Moo;

extends qw/ SemanticWeb::Schema::PerformingGroup /;


use MooX::JSON_LD 'DanceGroup';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v8.0.1';

=encoding utf8

=head1 DESCRIPTION

A dance group&#x2014;for example, the Alvin Ailey Dance Theater or
Riverdance.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::PerformingGroup>

=cut

1;
