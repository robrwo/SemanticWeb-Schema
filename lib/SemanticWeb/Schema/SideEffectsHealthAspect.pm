use utf8;

package SemanticWeb::Schema::SideEffectsHealthAspect;

# ABSTRACT: Side effects that can be observed from the usage of the topic.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'SideEffectsHealthAspect';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Side effects that can be observed from the usage of the topic.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
