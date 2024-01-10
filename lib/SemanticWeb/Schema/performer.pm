use utf8;

package SemanticWeb::Schema::performer;

# ABSTRACT: A performer at the event—for example

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'performer';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A performer at the event&#x2014;for example, a presenter, musician, musical
group or actor.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
