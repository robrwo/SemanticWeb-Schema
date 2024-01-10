use utf8;

package SemanticWeb::Schema::learningResourceType;

# ABSTRACT: The predominant type or kind characterizing the learning resource

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'learningResourceType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The predominant type or kind characterizing the learning resource. For
example, 'presentation', 'handout'.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
