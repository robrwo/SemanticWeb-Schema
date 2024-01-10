use utf8;

package SemanticWeb::Schema::PreventionHealthAspect;

# ABSTRACT: Information about actions or measures that can be taken to avoid getting the topic or reaching a critical situation related to the topic.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'PreventionHealthAspect';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Information about actions or measures that can be taken to avoid getting
the topic or reaching a critical situation related to the topic.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
