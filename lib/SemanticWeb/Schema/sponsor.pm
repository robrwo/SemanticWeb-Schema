use utf8;

package SemanticWeb::Schema::sponsor;

# ABSTRACT: A person or organization that supports a thing through a pledge

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'sponsor';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A person or organization that supports a thing through a pledge, promise,
or financial contribution. E.g. a sponsor of a Medical Study or a corporate
sponsor of an event.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
