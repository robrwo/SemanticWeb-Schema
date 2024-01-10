use utf8;

package SemanticWeb::Schema::CausesHealthAspect;

# ABSTRACT: Information about the causes and main actions that gave rise to the topic.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'CausesHealthAspect';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Information about the causes and main actions that gave rise to the topic.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
