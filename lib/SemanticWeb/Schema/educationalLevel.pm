use utf8;

package SemanticWeb::Schema::educationalLevel;

# ABSTRACT: The level in terms of progression through an educational or training context

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'educationalLevel';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The level in terms of progression through an educational or training
context. Examples of educational levels include 'beginner', 'intermediate'
or 'advanced', and formal sets of level indicators.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
