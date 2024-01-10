use utf8;

package SemanticWeb::Schema::byMonthDay;

# ABSTRACT: Defines the day(s) of the month on which a recurring [[Event]] takes place

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'byMonthDay';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Defines the day(s) of the month on which a recurring L<SemanticWeb::Schema::Event> takes place. Specified as an L<SemanticWeb::Schema::Integer> between 1-31.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
