use utf8;

package SemanticWeb::Schema::performers;

# ABSTRACT: The main performer or performers of the event—for example

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'performers';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The main performer or performers of the event&#x2014;for example, a
presenter, musician, or actor.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
