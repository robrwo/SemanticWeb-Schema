use utf8;

package SemanticWeb::Schema::DigitalDocumentPermission;

# ABSTRACT: A permission for a particular person or group to access a particular file.

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'DigitalDocumentPermission';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.3';

=encoding utf8

=head1 DESCRIPTION

A permission for a particular person or group to access a particular file.




=head1 ATTRIBUTES


=head2 C<grantee>



The person, organization, contact point, or audience that has been granted
this permission.


A grantee should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ContactPoint']>

=item C<InstanceOf['SemanticWeb::Schema::Audience']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has grantee => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'grantee',
);


=head2 C<permission_type>

C<permissionType>

The type of permission granted the person, organization, or audience.


A permission_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DigitalDocumentPermissionType']>

=back

=cut

has permission_type => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'permissionType',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
