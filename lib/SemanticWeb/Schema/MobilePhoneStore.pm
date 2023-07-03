use utf8;

package SemanticWeb::Schema::MobilePhoneStore;

# ABSTRACT: A store that sells mobile phones and related accessories.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'MobilePhoneStore';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.0';

=encoding utf8

=head1 DESCRIPTION

A store that sells mobile phones and related accessories.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;
