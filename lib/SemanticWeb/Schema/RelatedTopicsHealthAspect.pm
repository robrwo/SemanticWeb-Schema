use utf8;

package SemanticWeb::Schema::RelatedTopicsHealthAspect;

# ABSTRACT: Other prominent or relevant topics tied to the main topic.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'RelatedTopicsHealthAspect';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Other prominent or relevant topics tied to the main topic.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
