use utf8;

package SemanticWeb::Schema::urlTemplate;

# ABSTRACT: An url template (RFC6570) that will be used to construct the target of the execution of the action.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'urlTemplate';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An url template (RFC6570) that will be used to construct the target of the
execution of the action.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
