use utf8;

package SemanticWeb::Schema::superEvent;

# ABSTRACT: An event that this event is a part of

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'superEvent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An event that this event is a part of. For example, a collection of
individual music performances might each have a music festival as their
superEvent.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
