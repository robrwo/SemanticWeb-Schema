use utf8;

package SemanticWeb::Schema::creativeWorkStatus;

# ABSTRACT: The status of a creative work in terms of its stage in a lifecycle

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'creativeWorkStatus';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The status of a creative work in terms of its stage in a lifecycle. Example
terms include Incomplete, Draft, Published, Obsolete. Some organizations
define a set of terms for the stages of their publication lifecycle.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
