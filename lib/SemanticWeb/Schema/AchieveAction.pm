use utf8;

package SemanticWeb::Schema::AchieveAction;

# ABSTRACT: The act of accomplishing something via previous efforts

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use MooX::JSON_LD 'AchieveAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of accomplishing something via previous efforts. It is an
instantaneous action rather than an ongoing process.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;
