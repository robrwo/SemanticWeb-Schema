use utf8;

package SemanticWeb::Schema::VirtualLocation;

# ABSTRACT: An online or virtual location for attending events

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'VirtualLocation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

An online or virtual location for attending events. For example, one may
attend an online seminar or educational event. While a virtual location may
be used as the location of an event, virtual locations should not be
confused with physical locations in the real world.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
