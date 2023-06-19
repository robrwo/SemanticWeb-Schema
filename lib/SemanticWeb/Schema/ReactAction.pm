use utf8;

package SemanticWeb::Schema::ReactAction;

# ABSTRACT: The act of responding instinctively and emotionally to an object

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::AssessAction /;


use MooX::JSON_LD 'ReactAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

The act of responding instinctively and emotionally to an object,
expressing a sentiment.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::AssessAction>

=cut

1;
